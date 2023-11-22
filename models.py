from sqlalchemy import Column, Integer, String, ForeignKey
from database import Base, engine

class Product_type(Base):
    __tablename__ = "product_type"

    id = Column(Integer, primary_key=True, index=True)
    product_type = Column(String)

class Products(Base):
    __tablename__ = "products"

    id = Column(Integer, primary_key=True, index=True)
    product = Column(String)
    product_type_id = (Integer, ForeignKey("product_type.id"))

