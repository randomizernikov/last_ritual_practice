from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from database import Base

class ProductType(Base):
    __tablename__ = "product_type"

    id = Column(Integer, primary_key=True, index=True)
    product_type = Column(String)

class Product(Base):
    __tablename__ = "products"

    id = Column(Integer, primary_key=True, index=True)
    product = Column(String)
    description = Column(String)
    product_type_id = Column(Integer, ForeignKey("product_type.id"))
    img = Column(String)


