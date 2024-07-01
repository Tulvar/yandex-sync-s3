# S3 Sync Script

This repository contains a Bash script to synchronize two S3 buckets using the AWS CLI in Yandex Cloud Functions, and format the output as a JSON object using `jq`.

### AWS Credentials Setup
Make sure to configure your AWS credentials in your Yandex Cloud Functions account. You can do this by setting the following environment variables in the Yandex Cloud web interface:
```
AWS_ACCESS_KEY_ID=your_access_key_id
AWS_SECRET_ACCESS_KEY=your_secret_access_key
```
### Steps to Set AWS Credentials in Yandex Cloud
1. Log in to Yandex Cloud: Go to the Yandex Cloud Console.
2. Navigate to the Function: Select the function where you want to run the script.
3. Set Environment Variables: In the function settings, find the section for environment variables.
3. Add Variables:
   * Add AWS_ACCESS_KEY_ID with your AWS Access Key ID.
   * Add AWS_SECRET_ACCESS_KEY with your AWS Secret Access Key.

### Example
If the sync operation outputs:

```bash
upload: ./file1.txt to s3://dst/file1.txt
upload: ./file2.txt to s3://dst/file2.txt
```

The script will produce the following JSON:

```json
{
  "statusCode": 200,
  "body": {
    "request": "upload: ./file1.txt to s3://dst/file1.txt\nupload: ./file2.txt to s3://dst/file2.txt"
  }
}
```
