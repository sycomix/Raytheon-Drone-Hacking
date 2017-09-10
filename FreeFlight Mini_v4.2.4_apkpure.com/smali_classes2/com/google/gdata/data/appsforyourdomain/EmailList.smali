.class public Lcom/google/gdata/data/appsforyourdomain/EmailList;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "EmailList.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription; = null

.field public static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "emailList"


# instance fields
.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    .line 50
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/EmailList;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 51
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 52
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "emailList"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extensionProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "emailList"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/appsforyourdomain/EmailList;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/appsforyourdomain/EmailList;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 88
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "emailList"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 96
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/EmailList$1;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/EmailList;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/gdata/data/appsforyourdomain/EmailList$1;-><init>(Lcom/google/gdata/data/appsforyourdomain/EmailList;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/EmailList;->name:Ljava/lang/String;

    .line 63
    return-void
.end method
