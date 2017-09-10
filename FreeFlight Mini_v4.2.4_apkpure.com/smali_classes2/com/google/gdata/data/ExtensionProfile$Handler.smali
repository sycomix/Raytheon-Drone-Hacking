.class public Lcom/google/gdata/data/ExtensionProfile$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ExtensionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ExtensionProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field private configLoader:Ljava/lang/ClassLoader;

.field private configProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private namespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gdata/data/ExtensionProfile;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p2, "configProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "configLoader"    # Ljava/lang/ClassLoader;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 466
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->namespaces:Ljava/util/List;

    .line 467
    iput-object p2, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->configProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 468
    iput-object p3, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->configLoader:Ljava/lang/ClassLoader;

    .line 470
    if-eqz p4, :cond_0

    .line 471
    const-string v1, "arbitraryXml"

    invoke-virtual {p0, p4, v1}, Lcom/google/gdata/data/ExtensionProfile$Handler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 472
    .local v0, "val":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->access$002(Lcom/google/gdata/data/ExtensionProfile;Z)Z

    .line 476
    .end local v0    # "val":Ljava/lang/Boolean;
    :cond_0
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 10
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    const-string v0, "http://schemas.google.com/gdata/config/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    const-string v0, "namespaceDescription"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    const-string v0, ""

    const-string v1, "alias"

    invoke-interface {p3, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "alias":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 500
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 502
    .local v8, "pe":Lcom/google/gdata/util/ParseException;
    const-string v0, "NamespaceDescription alias attribute is missing"

    invoke-virtual {v8, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 504
    throw v8

    .line 506
    .end local v8    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_0
    const-string v0, ""

    const-string v1, "uri"

    invoke-interface {p3, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, "uri":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 508
    new-instance v8, Lcom/google/gdata/util/ParseException;

    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 510
    .restart local v8    # "pe":Lcom/google/gdata/util/ParseException;
    const-string v0, "NamespaceDescription uri attribute is missing"

    invoke-virtual {v8, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 512
    throw v8

    .line 515
    .end local v8    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_1
    new-instance v7, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {v7, v6, v9}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .local v7, "declaredNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->namespaces:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v7}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 518
    new-instance v0, Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 527
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "declaredNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v9    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 520
    :cond_2
    const-string v0, "extensionPoint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;

    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->configProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->configLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/google/gdata/data/ExtensionProfile$Handler;->namespaces:Ljava/util/List;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;-><init>(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/util/List;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 527
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/gdata/data/ExtensionProfile$Handler;->validate()V

    .line 485
    return-void
.end method

.method public validate()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method
