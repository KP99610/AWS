import boto3

# Initialize DynamoDB Client
dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('MyDynamodb')

# Insert Data
table.put_item(Item={
    'ID': 'S01',
    'Name': 'John',
})

# Retrieve Data
response = table.get_item(Key={'ID': 'S01'})
print(response['Item'])
