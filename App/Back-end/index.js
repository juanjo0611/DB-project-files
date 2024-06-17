import express from 'express';
import cors from 'cors';

// Import routes
import authRoutes from './routes/authRoutes.js'

const app = express();
app.use(express.json({extended: true}));

// Enable cors
app.use(cors());

// Routes
app.use("/auth", authRoutes);

app.listen(4000);
