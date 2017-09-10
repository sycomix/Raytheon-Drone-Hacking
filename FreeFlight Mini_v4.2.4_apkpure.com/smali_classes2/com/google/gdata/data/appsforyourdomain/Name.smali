.class public Lcom/google/gdata/data/appsforyourdomain/Name;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Name.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/Name$Handler;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FAMILY_NAME:Ljava/lang/String; = "familyName"

.field public static final ATTRIBUTE_GIVEN_NAME:Ljava/lang/String; = "givenName"

.field private static EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription; = null

.field public static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "name"


# instance fields
.field protected familyName:Ljava/lang/String;

.field protected givenName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    .line 48
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/Name;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 49
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 50
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 115
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Name;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

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
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->familyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "familyName"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->familyName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->givenName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "givenName"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->givenName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "name"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/appsforyourdomain/Name;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/appsforyourdomain/Name;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 104
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 111
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/Name$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/appsforyourdomain/Name$Handler;-><init>(Lcom/google/gdata/data/appsforyourdomain/Name;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->familyName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 0
    .param p1, "givenName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Name;->givenName:Ljava/lang/String;

    .line 70
    return-void
.end method
