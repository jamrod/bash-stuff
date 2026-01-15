# /usr/bin/bash
# search s3 from last modified date
BUCKET=$1
SEARCH_DATE=$(gdate -d $2 +%s) # 2016-05-20
echo Checking "$BUCKET" for dates on or after $2
keys=$(aws s3api list-objects --bucket "$BUCKET" --query 'Contents[].{Key: Key, Date: LastModified}' --output json) # get all the bucket keys
echo Got $(jq 'length' <<<$keys) Keys
# Loop through the results using jq and compare the LastModified date to input date
while IFS= read -r obj; do
    comp_date_string=$(echo "$obj" | jq -r .Date)
    comp_date=$(gdate -d $comp_date_string +%s)
    [[ $comp_date -ge $SEARCH_DATE ]] && echo $obj
done < <(jq -c '.[]' <<< "$keys")
echo Search Complete
# {
#     "Contents": [
#         {
#             "Key": "0001aabfbc89ffb812d05457e95b023791100e203ff4463da6d35f0e484f7c65.zip",
#             "LastModified": "2024-07-17T21:51:49+00:00",
#             "ETag": "\"4992c190029b2bb656ac1108d6bdb68b\"",
#             "Size": 3401243,
#             "StorageClass": "STANDARD",
#             "Owner": {
#                 "DisplayName": "devanator",
#                 "ID": "7d31ea47a5c6d4cdd98285baa0013485c04872a72a458313c73fcba5da7bae49"
#             }
#         },
#         {
#             "Key": "000553c4d04e8e2f74eefb725a55838fa5ae5edf2b219393e33ddaa1b8796467.zip",
#             "LastModified": "2023-02-14T21:41:03+00:00",
#             "ETag": "\"f52e480193f908d56a228b01f99337a1\"",
#             "Size": 849471,
#             "StorageClass": "STANDARD",
#             "Owner": {
#                 "DisplayName": "devanator",
#                 "ID": "7d31ea47a5c6d4cdd98285baa0013485c04872a72a458313c73fcba5da7bae49"
#             }
#         },
#     ]
# }
