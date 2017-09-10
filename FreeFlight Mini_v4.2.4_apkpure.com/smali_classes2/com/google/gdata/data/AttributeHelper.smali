.class public Lcom/google/gdata/data/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;,
        Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    }
.end annotation


# instance fields
.field protected final attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private contentConsumed:Z

.field private dups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->dups:Ljava/util/Set;

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/gdata/data/AttributeHelper;->contentConsumed:Z

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "attrLocalName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->dups:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v0    # "attrLocalName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 77
    :cond_2
    return-void
.end method


# virtual methods
.method public assertAllConsumed()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x73

    const/16 v6, 0x3a

    const/4 v5, 0x1

    .line 660
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v2, "message":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 662
    const-string v4, "Unknown attribute"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 664
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 666
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 667
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    .local v3, "name":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v4, "\' "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 673
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->dups:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 674
    const-string v4, "Duplicate attribute"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 675
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->dups:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 676
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 678
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 679
    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->dups:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    .local v0, "dup":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    const-string v4, "\' "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 685
    .end local v0    # "dup":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-boolean v4, p0, Lcom/google/gdata/data/AttributeHelper;->contentConsumed:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 686
    const-string v4, "Unexpected text content "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 689
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 691
    :cond_5
    return-void
.end method

.method public consume(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 103
    new-instance v2, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->missingRequiredContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v2

    .line 106
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/gdata/data/AttributeHelper;->contentConsumed:Z

    .line 107
    iget-object v1, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 111
    if-eqz p2, :cond_2

    .line 112
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 114
    .local v0, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 115
    throw v0

    .line 117
    .end local v0    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/data/AttributeHelper;->attrs:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public consumeBigDecimal(Ljava/lang/String;Z)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeBigDecimal(Ljava/lang/String;ZLjava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public consumeBigDecimal(Ljava/lang/String;ZLjava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 349
    .end local p3    # "defaultValue":Ljava/math/BigDecimal;
    :goto_0
    return-object p3

    .restart local p3    # "defaultValue":Ljava/math/BigDecimal;
    :cond_0
    :try_start_0
    new-instance p3, Ljava/math/BigDecimal;

    .end local p3    # "defaultValue":Ljava/math/BigDecimal;
    invoke-direct {p3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidBigDecimalAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 353
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid big decimal value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 355
    throw v1
.end method

.method public consumeBigInteger(Ljava/lang/String;Z)Ljava/math/BigInteger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeBigInteger(Ljava/lang/String;ZLjava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public consumeBigInteger(Ljava/lang/String;ZLjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 307
    .end local p3    # "defaultValue":Ljava/math/BigInteger;
    :goto_0
    return-object p3

    .restart local p3    # "defaultValue":Ljava/math/BigInteger;
    :cond_0
    :try_start_0
    new-instance p3, Ljava/math/BigInteger;

    .end local p3    # "defaultValue":Ljava/math/BigInteger;
    invoke-direct {p3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidBigIntegerAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 311
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid big integer value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 313
    throw v1
.end method

.method public consumeBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public consumeBoolean(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 492
    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .line 489
    .restart local p3    # "defaultValue":Z
    :cond_0
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    .line 491
    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    :cond_3
    const/4 p3, 0x0

    goto :goto_0

    .line 494
    :cond_4
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidBooleanAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 496
    .local v0, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid boolean value for attribute: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 498
    throw v0
.end method

.method public consumeByte(Ljava/lang/String;Z)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeByte(Ljava/lang/String;ZB)B

    move-result v0

    return v0
.end method

.method public consumeByte(Ljava/lang/String;ZB)B
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 141
    .end local p3    # "defaultValue":B
    :goto_0
    return p3

    .restart local p3    # "defaultValue":B
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidByteAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 145
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid byte value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 146
    throw v1
.end method

.method public consumeContent(Z)Ljava/lang/String;
    .locals 1
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 532
    const/4 v3, 0x0

    .line 535
    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/google/gdata/data/DateTime;->parseDateTimeChoice(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidDatetime:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 539
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badly formatted datetime in attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 540
    throw v1
.end method

.method public consumeDouble(Ljava/lang/String;Z)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 418
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;ZD)D

    move-result-wide v0

    return-wide v0
.end method

.method public consumeDouble(Ljava/lang/String;ZD)D
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 397
    .end local p3    # "defaultValue":D
    :goto_0
    return-wide p3

    .line 391
    .restart local p3    # "defaultValue":D
    :cond_0
    const-string v3, "INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    const-wide/high16 p3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 393
    :cond_1
    const-string v3, "-INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    const-wide/high16 p3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 397
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidDoubleAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 401
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid double value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 403
    throw v1
.end method

.method public consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 647
    .local p3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 616
    .local p3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 622
    .end local p4    # "defaultValue":Ljava/lang/Enum;, "TT;"
    :goto_0
    return-object p4

    .restart local p4    # "defaultValue":Ljava/lang/Enum;, "TT;"
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidAttributeValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 626
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for attribute : \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 627
    throw v1
.end method

.method public consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 583
    .local p3, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "TT;"
    .local p5, "enumToAttributeValue":Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;, "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 589
    .end local p4    # "defaultValue":Ljava/lang/Enum;, "TT;"
    :goto_0
    return-object p4

    .line 587
    .restart local p4    # "defaultValue":Ljava/lang/Enum;, "TT;"
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 588
    .local v1, "enumValue":Ljava/lang/Enum;, "TT;"
    invoke-interface {p5, v1}, Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;->getAttributeValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p4, v1

    .line 589
    goto :goto_0

    .line 587
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "enumValue":Ljava/lang/Enum;, "TT;"
    :cond_2
    new-instance v4, Lcom/google/gdata/util/ParseException;

    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->invalidAttributeValue:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v4, v6}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 594
    .local v4, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value for attribute : \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 595
    throw v4
.end method

.method public consumeFloat(Ljava/lang/String;Z)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeFloat(Ljava/lang/String;ZF)F

    move-result v0

    return v0
.end method

.method public consumeFloat(Ljava/lang/String;ZF)F
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 445
    .end local p3    # "defaultValue":F
    :goto_0
    return p3

    .line 439
    .restart local p3    # "defaultValue":F
    :cond_0
    const-string v3, "INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const/high16 p3, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 441
    :cond_1
    const-string v3, "-INF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    const/high16 p3, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 445
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidFloatAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 449
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid float value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 451
    throw v1
.end method

.method public consumeInteger(Ljava/lang/String;Z)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public consumeInteger(Ljava/lang/String;ZI)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 222
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidIntegerAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 226
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid integer value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 228
    throw v1
.end method

.method public consumeLong(Ljava/lang/String;Z)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public consumeLong(Ljava/lang/String;ZJ)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 264
    .end local p3    # "defaultValue":J
    :goto_0
    return-wide p3

    .restart local p3    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidLongAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 268
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid long value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 270
    throw v1
.end method

.method public consumeShort(Ljava/lang/String;Z)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeShort(Ljava/lang/String;ZS)S

    move-result v0

    return v0
.end method

.method public consumeShort(Ljava/lang/String;ZS)S
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # Z
    .param p3, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 181
    .end local p3    # "defaultValue":S
    :goto_0
    return p3

    .restart local p3    # "defaultValue":S
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v3, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v3, v3, Lcom/google/gdata/client/CoreErrorDomain;->invalidShortAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v3}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 185
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid short value for attribute: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 186
    throw v1
.end method

.method setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 700
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/data/AttributeHelper;->content:Ljava/lang/String;

    .line 701
    return-void

    .line 700
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
