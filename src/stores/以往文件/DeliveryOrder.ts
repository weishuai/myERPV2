import { SearchVo} from '../utils/SearchVo';
export class  DeliveryOrderSearchVo extends SearchVo{
  read?: number;
  fundType?: '';
};

export class DeliveryOrderVo {
  id = '';

  refNumber = '';

  linkedInvoice = '';

  deliveryName = '';

  clientCompany = '';

  deliveryDate?: Date = new Date();

  clientContact = '';

  creator = '';

  postCode = '';

  street = '';

  city = '';

  state = '';

  country = '';

  termsConditions = '';

  remark = '';

  createdAt?: Date = new Date();

  updatedAt?: Date = new Date();

  isactived = '0';

  islocked = '0';

  createUid = '';

  updatedUid = '';
}
