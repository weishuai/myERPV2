import { SearchVo} from '../utils/SearchVo';
export class  CustomizationSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class CustomizationVo {
  id = '';

  name = '';

  format = '';

  value = 0;

  table = '';

  rate = '';

  source = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
