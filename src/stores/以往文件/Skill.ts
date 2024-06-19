import { SearchVo} from '../utils/SearchVo';
export class  SkillSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class SkillVo {
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
