.class public Lcom/google/gdata/data/appsforyourdomain/Property;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Property.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/Property$Handler;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

.field private static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "property"


# instance fields
.field protected name:Ljava/lang/String;

.field protected val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    .line 47
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 48
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 49
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "property"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 107
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Property;->EXTENSION_DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "value"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "property"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/appsforyourdomain/Property;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/appsforyourdomain/Property;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 95
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "property"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 103
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;-><init>(Lcom/google/gdata/data/appsforyourdomain/Property;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

    .line 73
    return-void
.end method
