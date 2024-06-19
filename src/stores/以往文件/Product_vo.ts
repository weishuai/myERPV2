import { SearchVo} from '../utils/SearchVo';
export class ProductVo  {
  id?:string;
  name?:string;
  description?:string;
  product_name?: any;
  photo?: any;
  manufacturer?: number;
  category?: number;
  unit?: number;
  currency?: number;
  list_price?: number;
  cost?: number;

  createdAt?:Date;
  updatedAt?:Date;
  isactived?:string;
  islocked?:string;
  createUid?:string;
  updatedUid?:string;
}
export class ProductSearchVo extends SearchVo{
  read?: number;
  fundType?:string;
};