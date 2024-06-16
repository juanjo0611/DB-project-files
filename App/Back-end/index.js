const express = require('express');
const cors = require('cors');
// Import routes
const authRoutes = require('./routes/authRoutes.js');

const app = express();
app.use(express.json({extended: true}));

// Enable cors
app.use(cors());

// Routes
app.use("/api/auth", authRoutes);

app.listen(4000);
