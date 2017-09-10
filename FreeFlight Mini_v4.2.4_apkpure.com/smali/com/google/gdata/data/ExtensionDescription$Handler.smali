.class public Lcom/google/gdata/data/ExtensionDescription$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "ExtensionDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ExtensionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/ExtensionDescription;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/util/List;Lorg/xml/sax/Attributes;)V
    .locals 10
    .param p2, "configProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "configLoader"    # Ljava/lang/ClassLoader;
    .param p5, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 317
    .local p4, "namespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription$Handler;->this$0:Lcom/google/gdata/data/ExtensionDescription;

    .line 318
    const-class v8, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {p0, p1, p2, v8}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 320
    const-string v8, ""

    const-string v9, "namespace"

    invoke-interface {p5, v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "nsValue":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 322
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->missingNamespace:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v8

    .line 328
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 329
    .local v1, "declaredNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 331
    :cond_2
    invoke-static {p1, v1}, Lcom/google/gdata/data/ExtensionDescription;->access$002(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/util/common/xml/XmlNamespace;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 335
    .end local v1    # "declaredNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_3
    invoke-static {p1}, Lcom/google/gdata/data/ExtensionDescription;->access$000(Lcom/google/gdata/data/ExtensionDescription;)Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v8

    if-nez v8, :cond_4

    .line 336
    new-instance v7, Lcom/google/gdata/util/ParseException;

    sget-object v8, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v8, v8, Lcom/google/gdata/client/CoreErrorDomain;->missingNamespaceDescription:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v7, v8}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 338
    .local v7, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No matching NamespaceDescription for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 340
    throw v7

    .line 343
    .end local v7    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_4
    const-string v8, ""

    const-string v9, "localName"

    invoke-interface {p5, v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$102(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-static {p1}, Lcom/google/gdata/data/ExtensionDescription;->access$100(Lcom/google/gdata/data/ExtensionDescription;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 345
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->missingLocalName:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v8

    .line 349
    :cond_5
    const-string v8, ""

    const-string v9, "extensionClass"

    invoke-interface {p5, v8, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "extensionClassName":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 351
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionClass:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v8

    .line 355
    :cond_6
    :try_start_0
    invoke-virtual {p3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 356
    .local v3, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/google/gdata/data/Extension;

    invoke-virtual {v8, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 357
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->mustImplementExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Lcom/google/gdata/util/ParseException;

    sget-object v8, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v8, v8, Lcom/google/gdata/client/CoreErrorDomain;->cantLoadExtensionClass:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v7, v8, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 364
    .restart local v7    # "pe":Lcom/google/gdata/util/ParseException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load extensionClass: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 366
    throw v7

    .line 360
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "pe":Lcom/google/gdata/util/ParseException;
    .restart local v3    # "extClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    :try_start_1
    invoke-static {p1, v3}, Lcom/google/gdata/data/ExtensionDescription;->access$202(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    const-string v8, "required"

    invoke-virtual {p0, p5, v8}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 370
    .local v0, "bool":Ljava/lang/Boolean;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_0
    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$302(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 372
    const-string v8, "repeatable"

    invoke-virtual {p0, p5, v8}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_1
    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$402(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 375
    const-string v8, "aggregate"

    invoke-virtual {p0, p5, v8}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$502(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 378
    const-string v8, "arbitraryXml"

    invoke-virtual {p0, p5, v8}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_3
    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$602(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 381
    const-string v8, "mixedContent"

    invoke-virtual {p0, p5, v8}, Lcom/google/gdata/data/ExtensionDescription$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_4
    invoke-static {p1, v8}, Lcom/google/gdata/data/ExtensionDescription;->access$702(Lcom/google/gdata/data/ExtensionDescription;Z)Z

    .line 383
    return-void

    .line 370
    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    .line 373
    :cond_9
    const/4 v8, 0x0

    goto :goto_1

    .line 376
    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    .line 379
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 382
    :cond_c
    const/4 v8, 0x0

    goto :goto_4
.end method
