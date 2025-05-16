# Express MongoDB Application

A minimal Express.js application with MongoDB connection, health check endpoint, and basic configuration.

## Prerequisites

- Node.js (v14 or higher)
- MongoDB (local or Atlas)

## Setup Instructions

1. Clone the repository

```bash
git clone 
cd express-mongo-app
```

2. Install dependencies

```bash
npm install
```

3. Configure environment variables

```bash
# Copy the example .env file and modify it with your MongoDB connection details
cp .env.example .env
# Edit the .env file with your MongoDB connection string
```

4. Start the development server

```bash
npm run dev
```

5. For production use

```bash
npm run build
npm start
```

## Project Structure

```
.
├── package.json        # Project dependencies and scripts
├── .env                # Environment variables
├── src/
│   ├── index.js        # Main application file
│   ├── routes.js       # API routes
│   └── models/         # MongoDB models
│       └── user.js     # Example user model
```

## Available Endpoints

- `GET /` - Health check endpoint
- `GET /api/hello` - Example API endpoint

## Scripts

- `npm start` - Start the server in production mode
- `npm run dev` - Start the server in development mode with hot-reloading
- `npm run build` - Build the project for production deployment

## Environment Variables

- `PORT` - Server port (default: 3000)
- `MONGODB_URI` - MongoDB connection string

