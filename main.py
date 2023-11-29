from database import engine, Base, db
from fastapi import FastAPI
from models import Product,ProductType
from fastapi import APIRouter
from fastapi.middleware.cors import CORSMiddleware



Base.metadata.create_all(bind=engine)
app = FastAPI()

main = APIRouter()


#отключение корса

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


#товары
@app.get("/products")
async def product():
    return db.query(Product).all()


#типы товаров
@app.get("/product_types")
async def productTypes():
    return db.query(ProductType).all()

#фильтрация

@app.get("/products/{id}")
async def productsFilter(type:int):
    return db.query(Product).filter(Product.product_type_id == type).all()