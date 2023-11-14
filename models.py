from sqlalchemy import Column, Integer, String, ForeignKey
from database import Base, engine

class Vid_tovar(Base):
    __tablename__ = "vid_tovar"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)

class Tovar(Base):
    __tablename__ = "tovar"

    id = Column(Integer, primary_key=True, index=True)
    name_tovar = Column(String)
    vid_tovar_id = (Integer, ForeignKey("vid_tovar.id"))


class Uslugi(Base):
    __tablename__ = "uslugi"

    id = Column(Integer, primary_key=True, index=True)
    usluga = Column(String)
    description = Column(String)



