"use client"
import React from 'react';
import { useTranslation } from 'react-i18next'
import { SellingPriceList } from '../../../src/views/SellingPrice/SellingPriceList';
export default function Page() {
  const { t, i18n } = useTranslation();
  
  return (

      <SellingPriceList />

  );
}