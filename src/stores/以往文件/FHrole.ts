import { SearchVo} from '../utils/SearchVo';
export class  FHroleSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class FHroleVo {
  id = '';

  name = '';

  app = '';

  isDefault = 0;

  isDel = 0;

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();
}
