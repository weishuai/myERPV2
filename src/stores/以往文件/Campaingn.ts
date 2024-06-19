import { SearchVo} from '../utils/SearchVo';
export class  CampaingnSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class CampaingnVo {
  id = '';

  name = '';

  starts?: Date = new Date();

  ends?: Date = new Date();

  owner = '';

  budget = 0;

  status = 'New';

  description = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
