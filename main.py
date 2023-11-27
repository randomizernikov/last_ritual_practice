from database import engine, Base, Session, db
from fastapi import FastAPI
from models import Product,ProductType
from fastapi import APIRouter, HTTPException
from fastapi.middleware.cors import CORSMiddleware

from fastapi.responses import HTMLResponse


Base.metadata.create_all(bind=engine)
app = FastAPI()

main = APIRouter()


app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
async def root():
    return {"message": "Hello World"}

@app.get("/products")
async def root():
    return db.query(Product).all()

@app.get("/product_types")
async def root():
    return db.query(ProductType).all()