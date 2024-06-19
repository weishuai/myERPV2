import { SearchVo} from '../utils/SearchVo';
export class  TranslateSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class TranslateVo {
  id = '';

  name = '';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
