GOOGLE_PROJECT_ID=ceremonial-team-348412
CLOUD_RUN_SERVICE=api-service-1
INSTANCE_CONNECTION_NAME=ceremonial-team-348412:us-central1:root
DB_USER=root
DB_PASS=Dilanka123
DB_NAME=users

gcloud builds submit --tag gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \ 
  --project=$GOOGLE_PROJECT_ID

gcloud run deploy $CLOUD_RUN_SERVICE \
  --image gcr.io/$GOOGLE_PROJECT_ID/$CLOUD_RUN_SERVICE \ 
  --add-cloudsql-instances $INSTANCE_CONNECTION_NAME \
  --update-env-vars INSTANCE_CONECTION_NAME=$INSTANCE_CONNECTION_NAME,DB_PASS=$DB_PASS,DB_USER=$DB_USER,DB_NAME=$DB_NAME \
  --platform managed \
  --region us-central1 \
  --project=$GOOGLE_PROJECT_ID
