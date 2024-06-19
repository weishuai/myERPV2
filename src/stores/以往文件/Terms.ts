import { SearchVo} from '../utils/SearchVo';
export class  TermsSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class TermsVo {
  id = '';

  name = '';

  description = '';

  leaderId = '';

  roleId = '';

  backgroundColor = '#20B2AA';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
