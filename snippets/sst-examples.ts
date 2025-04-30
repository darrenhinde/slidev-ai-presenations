// This file contains code snippets for the SST presentation
// These are not meant to be executed directly, but used as examples in slides

// For TypeScript validation purposes
import * as sst from "sst";
import { Resource } from "sst";
import { Upload } from "@aws-sdk/lib-storage";
import { S3Client } from "@aws-sdk/client-s3";

// Declare variables to avoid TypeScript errors
declare const vpc: sst.aws.Vpc;
declare const s3: S3Client;

// #region basic-nextjs
// Simple Next.js deployment with custom domain
new sst.aws.Nextjs("MyWeb", {
  domain: "my-app.com",
});
// #endregion basic-nextjs

// #region database-example
// Postgres database with minimal config
new sst.aws.Postgres("MyDatabase");

// DynamoDB table with custom settings
new sst.aws.Table("UsersTable", {
  fields: {
    userId: "string",
    email: "string",
    createdAt: "number",
  },
  primaryIndex: { partitionKey: "userId" },
  globalIndexes: {
    byEmail: { partitionKey: "email" },
  },
});
// #endregion database-example

// #region resource-linking
// Create a bucket
const bucket = new sst.aws.Bucket("MyBucket");

// Create a cluster
const cluster = new sst.aws.Cluster("MyCluster", { vpc });

// Link the bucket to the service
new sst.aws.Service("MyService", {
  cluster,
  link: [bucket], // This is the magic!
  loadBalancer: {
    ports: [{ listen: "80/http" }],
  },
});

// In your application code:
// import { Resource } from "sst";

// Access the bucket without hardcoding values
console.log(Resource.MyBucket.name);
// #endregion resource-linking

// #region bun-app
// Example of an SST config run function
function exampleRun() {
  const vpc = new sst.aws.Vpc("MyVpc");
  const bucket = new sst.aws.Bucket("MyBucket");

  const cluster = new sst.aws.Cluster("MyCluster", { vpc });
  new sst.aws.Service("MyService", {
    cluster,
    link: [bucket],
    loadBalancer: {
      ports: [{ listen: "80/http", forward: "3000/http" }],
    },
    dev: {
      command: "bun dev",
    },
  });
}
// #endregion bun-app

// #region file-upload
// Example of a file upload handler in a Bun application
function handleFileUpload(req: Request) {
  const url = new URL(req.url);

  if (url.pathname === "/" && req.method === "POST") {
    // This is just an example, in a real app we would use async/await
    return (async () => {
      const formData = await req.formData();
      const file = formData.get("file") as File;

      if (!file) {
        return new Response("No file provided", { status: 400 });
      }

      const params = {
        Bucket: Resource.MyBucket.name, // Accessing our linked bucket
        ContentType: file.type,
        Key: file.name,
        Body: file,
      };

      const upload = new Upload({
        params,
        client: s3,
      });
      await upload.done();

      return new Response("File uploaded successfully.");
    })();
  }

  return new Response("Method not allowed", { status: 405 });
}
// #endregion file-upload
