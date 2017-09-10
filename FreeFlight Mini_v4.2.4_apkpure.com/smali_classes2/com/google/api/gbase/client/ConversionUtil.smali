.class Lcom/google/api/gbase/client/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/ConversionUtil$ShippingField;,
        Lcom/google/api/gbase/client/ConversionUtil$TaxField;
    }
.end annotation


# static fields
.field private static final LATITUDE_ELEMENT_NAME:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE_ELEMENT_NAME:Ljava/lang/String; = "longitude"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static beforeSpace(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "firstSpace"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/DateTimeRange;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "range"    # Lcom/google/api/gbase/client/DateTimeRange;

    .prologue
    .line 187
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->DATE_TIME_RANGE:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p1}, Lcom/google/api/gbase/client/DateTimeRange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Group;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/google/api/gbase/client/Group;

    .prologue
    .line 239
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v5, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v1, p0, v5}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 240
    .local v1, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Group;->getAllSubAttributes()Lcom/google/common/collect/Multimap;

    move-result-object v3

    .line 241
    .local v3, "subAttributes":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 242
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v4

    .line 243
    .local v4, "type":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    sget-object v5, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v5, v4}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->GROUP:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->getSupertype()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 249
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .end local v4    # "type":Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    :cond_2
    return-object v1
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Location;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "location"    # Lcom/google/api/gbase/client/Location;

    .prologue
    .line 475
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->LOCATION:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 477
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setValue(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->hasCoordinates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getLatitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setSubElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Location;->getLongitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setSubElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Shipping;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "shipping"    # Lcom/google/api/gbase/client/Shipping;

    .prologue
    const/4 v10, 0x0

    .line 330
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v8, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->SHIPPING:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v0, p0, v8}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 333
    .local v0, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCountry()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 334
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v10, v9}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 336
    .local v1, "countryAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 338
    .end local v1    # "countryAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getRegions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 339
    .local v5, "region":Ljava/lang/String;
    new-instance v6, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v10, v5}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 341
    .local v6, "regionAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0, v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 343
    .end local v5    # "region":Ljava/lang/String;
    .end local v6    # "regionAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getService()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 344
    new-instance v7, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getService()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v10, v9}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 346
    .local v7, "serviceAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0, v7}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 349
    .end local v7    # "serviceAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getPrice()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "priceWithUnit":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCurrency()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Shipping;->getCurrency()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    :cond_3
    new-instance v3, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v8, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v10, v4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 355
    .local v3, "priceAttr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 356
    return-object v0
.end method

.method public static createAttribute(Ljava/lang/String;Lcom/google/api/gbase/client/Tax;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tax"    # Lcom/google/api/gbase/client/Tax;

    .prologue
    const/4 v6, 0x0

    .line 431
    new-instance v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    sget-object v4, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->TAX:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-direct {v1, p0, v4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    .line 432
    .local v1, "attribute":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    const/4 v0, 0x0

    .line 433
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getCountry()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 434
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v6, v5}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 435
    .restart local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getRegions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 438
    .local v3, "region":Ljava/lang/String;
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v6, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 439
    .restart local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    goto :goto_0

    .line 441
    .end local v3    # "region":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getRate()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v6, v5}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 443
    .restart local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 444
    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getTaxShip()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    sget-object v4, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v4}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/api/gbase/client/Tax;->getTaxShip()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "true"

    :goto_1
    invoke-direct {v0, v5, v6, v4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 447
    .restart local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v1, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V

    .line 449
    :cond_2
    return-object v1

    .line 445
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_3
    const-string v4, "false"

    goto :goto_1
.end method

.method public static extractDateTimeRange(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/DateTimeRange;
    .locals 7
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "range":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 205
    .local v2, "space":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 209
    new-instance v4, Lcom/google/api/gbase/client/DateTimeRange;

    invoke-static {v1}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/api/gbase/client/DateTimeRange;-><init>(Lcom/google/gdata/data/DateTime;)V

    .line 213
    :goto_0
    return-object v4

    .line 211
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "startStr":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "endStr":Ljava/lang/String;
    new-instance v4, Lcom/google/api/gbase/client/DateTimeRange;

    invoke-static {v3}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v5

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/api/gbase/client/DateTimeRange;-><init>(Lcom/google/gdata/data/DateTime;Lcom/google/gdata/data/DateTime;)V

    goto :goto_0
.end method

.method public static extractGroup(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Group;
    .locals 2
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 225
    new-instance v0, Lcom/google/api/gbase/client/Group;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/gbase/client/Group;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static extractLocation(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Location;
    .locals 5
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "address":Ljava/lang/String;
    new-instance v3, Lcom/google/api/gbase/client/Location;

    invoke-direct {v3, v0}, Lcom/google/api/gbase/client/Location;-><init>(Ljava/lang/String;)V

    .line 464
    .local v3, "retval":Lcom/google/api/gbase/client/Location;
    const-string v4, "latitude"

    invoke-virtual {p0, v4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "latString":Ljava/lang/String;
    const-string v4, "longitude"

    invoke-virtual {p0, v4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "longString":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 467
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/api/gbase/client/Location;->setLatitude(F)V

    .line 468
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/api/gbase/client/Location;->setLongitude(F)V

    .line 470
    :cond_0
    return-object v3
.end method

.method public static extractNumber(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Ljava/lang/Number;
    .locals 2
    .param p0, "attr"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 495
    if-nez p0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 502
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->FLOAT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractNumberUnit(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 2
    .param p0, "attr"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    if-nez p0, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 528
    :goto_0
    return-object v0

    .line 525
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->INT_UNIT:Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toIntUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public static extractShipping(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 1
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShippingFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractShippingFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;

    move-result-object v0

    goto :goto_0
.end method

.method private static extractShippingFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 12
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 269
    const/4 v11, 0x0

    .line 270
    .local v11, "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    .line 271
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v2, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 273
    .local v3, "service":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 274
    .local v6, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getName()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_0
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v10

    .line 282
    .local v10, "price":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 283
    :catch_0
    move-exception v7

    .line 284
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Lcom/google/api/gbase/client/NumberUnit;

    .end local v11    # "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v11, v0, v4}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .restart local v11    # "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    goto :goto_0

    .line 286
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "price":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getAttrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 289
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sub-attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not supported in Shipping."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    .end local v6    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .end local v9    # "name":Ljava/lang/String;
    :cond_4
    if-nez v11, :cond_5

    .line 294
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing \'price\' element in shipping attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_5
    new-instance v0, Lcom/google/api/gbase/client/Shipping;

    invoke-virtual {v11}, Lcom/google/api/gbase/client/NumberUnit;->getValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v11}, Lcom/google/api/gbase/client/NumberUnit;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/gbase/client/Shipping;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method private static extractShippingFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Shipping;
    .locals 9
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 302
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Country:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "country":Ljava/lang/String;
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Region:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 304
    .local v2, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Price:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, "price":Ljava/lang/String;
    sget-object v0, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->Service:Lcom/google/api/gbase/client/ConversionUtil$ShippingField;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/ConversionUtil$ShippingField;->getElemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "service":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 307
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing \'price\' element in shipping attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    :try_start_0
    invoke-static {v7}, Lcom/google/api/gbase/client/ConversionUtil;->toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 316
    .local v8, "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    :goto_0
    new-instance v0, Lcom/google/api/gbase/client/Shipping;

    invoke-virtual {v8}, Lcom/google/api/gbase/client/NumberUnit;->getValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v8}, Lcom/google/api/gbase/client/NumberUnit;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/gbase/client/Shipping;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0

    .line 313
    .end local v8    # "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    :catch_0
    move-exception v6

    .line 314
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Lcom/google/api/gbase/client/NumberUnit;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v8, v0, v4}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .restart local v8    # "priceUnit":Lcom/google/api/gbase/client/NumberUnit;, "Lcom/google/api/gbase/client/NumberUnit<Ljava/lang/Float;>;"
    goto :goto_0
.end method

.method public static extractTax(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 1
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTaxFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->extractTaxFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;

    move-result-object v0

    goto :goto_0
.end method

.method private static extractTaxFromAttributes(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 12
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 376
    const/4 v5, 0x0

    .line 377
    .local v5, "rateString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 378
    .local v1, "country":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v6, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 380
    .local v7, "taxShip":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 381
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "name":Ljava/lang/String;
    sget-object v9, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v9}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 383
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_1
    sget-object v9, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v9}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 385
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_2
    sget-object v9, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v9}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 387
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 388
    :cond_3
    sget-object v9, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v9}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getAttrName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 389
    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v8

    .line 390
    .local v8, "taxShipString":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 391
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 394
    .end local v8    # "taxShipString":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sub-attribute "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not supported in Tax."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 397
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    invoke-static {v5}, Lcom/google/gdata/util/common/base/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 398
    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "missing \'rate\' element in tax attribute: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 401
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 402
    .local v4, "rate":F
    new-instance v9, Lcom/google/api/gbase/client/Tax;

    invoke-direct {v9, v1, v6, v4, v7}, Lcom/google/api/gbase/client/Tax;-><init>(Ljava/lang/String;Ljava/util/Collection;FLjava/lang/Boolean;)V

    return-object v9
.end method

.method private static extractTaxFromElements(Lcom/google/api/gbase/client/GoogleBaseAttribute;)Lcom/google/api/gbase/client/Tax;
    .locals 9
    .param p0, "attribute"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 406
    sget-object v6, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Country:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v6}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "country":Ljava/lang/String;
    sget-object v6, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Region:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v6}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    .line 408
    .local v3, "regions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v6, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->Rate:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v6}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "rateString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 410
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing \'rate\' element in tax attribute: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 413
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 414
    .local v1, "rate":F
    sget-object v6, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->TaxShip:Lcom/google/api/gbase/client/ConversionUtil$TaxField;

    invoke-virtual {v6}, Lcom/google/api/gbase/client/ConversionUtil$TaxField;->getElemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubElementValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "taxShipString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 416
    .local v4, "taxShip":Ljava/lang/Boolean;
    if-eqz v5, :cond_1

    .line 417
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 419
    :cond_1
    new-instance v6, Lcom/google/api/gbase/client/Tax;

    invoke-direct {v6, v0, v3, v1, v4}, Lcom/google/api/gbase/client/Tax;-><init>(Ljava/lang/String;Ljava/util/Collection;FLjava/lang/Boolean;)V

    return-object v6
.end method

.method private static findFirstSpace(Ljava/lang/String;)I
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "firstSpace":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing unit in \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_1
    return v0
.end method

.method private static parseUnit(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "firstSpace"    # I

    .prologue
    .line 165
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static toDateOrDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/gdata/data/DateTime;->parseDateTimeChoice(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method static toFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toFloatUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v2, 0x0

    .line 156
    :goto_0
    return-object v2

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->findFirstSpace(Ljava/lang/String;)I

    move-result v1

    .line 155
    .local v1, "firstSpace":I
    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->beforeSpace(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "beforeSpace":Ljava/lang/String;
    new-instance v2, Lcom/google/api/gbase/client/NumberUnit;

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->parseUnit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toIntUnit(Ljava/lang/String;)Lcom/google/api/gbase/client/NumberUnit;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/gbase/client/NumberUnit",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v2, 0x0

    .line 139
    :goto_0
    return-object v2

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/google/api/gbase/client/ConversionUtil;->findFirstSpace(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "firstSpace":I
    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->beforeSpace(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "beforeSpace":Ljava/lang/String;
    new-instance v2, Lcom/google/api/gbase/client/NumberUnit;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/google/api/gbase/client/ConversionUtil;->parseUnit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/api/gbase/client/NumberUnit;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static toInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
