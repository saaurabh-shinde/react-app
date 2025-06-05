# Step 1: Use official Node image
FROM node:18-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy source code
COPY . .

# Step 5: Expose the port your React app will run on
EXPOSE 3000

# Step 6: Start the app (dev server)
CMD ["npm", "start"]
