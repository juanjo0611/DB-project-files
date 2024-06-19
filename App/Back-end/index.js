import express from 'express';
import cors from 'cors';

// Import routes
import authRoutes from './routes/authRoutes.js'
import egresadoRoutes from './routes/egresadoRoutes.js'
import empresaRoutes from './routes/empresaRoutes.js'
import viewRoutes from './routes/viewRoutes.js'

const app = express();
app.use(express.json({extended: true}));

// Enable cors
app.use(cors());

// Routes
app.use('/auth', authRoutes);
app.use('/egresado', egresadoRoutes);
app.use('/empresa', empresaRoutes)
app.use('/view', viewRoutes)

app.listen(4000);
