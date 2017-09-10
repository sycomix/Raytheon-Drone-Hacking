.class public Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/ajax/JSONPojoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setter"
.end annotation


# instance fields
.field protected _componentType:Ljava/lang/Class;

.field protected _method:Ljava/lang/reflect/Method;

.field protected _numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

.field protected _propertyName:Ljava/lang/String;

.field protected _type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_propertyName:Ljava/lang/String;

    .line 259
    iput-object p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    .line 260
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    .line 261
    invoke-static {}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 262
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    .line 265
    invoke-static {}, Lorg/mortbay/util/ajax/JSONPojoConvertor;->access$000()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    iput-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getNumberType()Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_type:Ljava/lang/Class;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 302
    if-nez p2, :cond_0

    .line 303
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    sget-object v1, Lorg/mortbay/util/ajax/JSONPojoConvertor;->NULL_ARG:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->invokeObject(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected invokeObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 311
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-eqz v5, :cond_0

    instance-of v5, p2, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 312
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v7, p2}, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;->getActualValue(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_0
    return-void

    .line 313
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-nez v5, :cond_1

    .line 317
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 318
    .local v3, "len":I
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "array":Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 327
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "array":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "len":I
    :cond_1
    move-object v5, p2

    .line 334
    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 335
    .local v4, "old":[Ljava/lang/Object;
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_componentType:Ljava/lang/Class;

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .restart local v0    # "array":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 339
    iget-object v6, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Number;

    invoke-interface {v6, v5}, Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;->getActualValue(Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 344
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 345
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v4    # "old":[Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_method:Ljava/lang/reflect/Method;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isPropertyNumber()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertor$Setter;->_numberType:Lorg/mortbay/util/ajax/JSONPojoConvertor$NumberType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
