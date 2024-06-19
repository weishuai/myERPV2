import { SearchVo} from '../utils/SearchVo';
export class  TemplateSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};


export class TemplateVo {
  id = '';

  templateName = '';

  photo = 0;

  templateType = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
