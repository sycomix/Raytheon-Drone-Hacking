.class public Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ExtensionProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ExtensionProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtensionPointHandler"
.end annotation


# instance fields
.field private arbitraryXml:Z

.field private configLoader:Ljava/lang/ClassLoader;

.field private configProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private extDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ">;"
        }
    .end annotation
.end field

.field private extensionPoint:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/util/List;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    .line 549
    .local p4, "namespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 541
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extDescriptions:Ljava/util/List;

    .line 551
    iput-object p2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->configProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 552
    iput-object p3, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->configLoader:Ljava/lang/ClassLoader;

    .line 553
    iput-object p4, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->namespaces:Ljava/util/List;

    .line 555
    const-string v5, ""

    const-string v6, "extendedClass"

    invoke-interface {p5, v5, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "extendedClassName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 557
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v5, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v5, v5, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v5}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 559
    .local v3, "pe":Lcom/google/gdata/util/ParseException;
    const-string v5, "ExtensionPoint extendedClass attribute is missing"

    invoke-virtual {v3, v5}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 561
    throw v3

    .line 566
    .end local v3    # "pe":Lcom/google/gdata/util/ParseException;
    :cond_0
    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 571
    .local v2, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 572
    new-instance v5, Lcom/google/gdata/util/ParseException;

    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->mustExtendExtensionPoint:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v5, v6}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v5

    .line 567
    .end local v2    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lcom/google/gdata/util/ParseException;

    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->cantLoadExtensionPoint:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v5, v6, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v5

    .line 575
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-static {p1, v2}, Lcom/google/gdata/data/ExtensionProfile;->access$100(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extensionPoint:Ljava/lang/Class;

    .line 577
    const-string v5, "arbitraryXml"

    invoke-virtual {p0, p5, v5}, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->getBooleanAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 578
    .local v4, "val":Ljava/lang/Boolean;
    if-eqz v4, :cond_2

    .line 579
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->arbitraryXml:Z

    .line 581
    :cond_2
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 6
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
    .line 601
    const-string v0, "http://schemas.google.com/gdata/config/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const-string v0, "extensionDescription"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v1, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v1}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 605
    .local v1, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extDescriptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription$Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->configProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->configLoader:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->namespaces:Ljava/util/List;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionDescription$Handler;-><init>(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/util/List;Lorg/xml/sax/Attributes;)V

    .line 611
    .end local v1    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 4

    .prologue
    .line 586
    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->arbitraryXml:Z

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extensionPoint:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extDescriptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 591
    .local v0, "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->this$0:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile$ExtensionPointHandler;->extensionPoint:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0

    .line 593
    .end local v0    # "extDescription":Lcom/google/gdata/data/ExtensionDescription;
    :cond_1
    return-void
.end method
