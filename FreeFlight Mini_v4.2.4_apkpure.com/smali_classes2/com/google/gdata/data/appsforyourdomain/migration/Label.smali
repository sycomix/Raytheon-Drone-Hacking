.class public Lcom/google/gdata/data/appsforyourdomain/migration/Label;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Label.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_LABEL_NAME:Ljava/lang/String; = "labelName"

.field private static EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription; = null

.field public static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "label"


# instance fields
.field protected labelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    .line 53
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 54
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    sget-object v1, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 55
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const-string v1, "label"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/migration/Label;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->EXTENSION_DESC:Lcom/google/gdata/data/ExtensionDescription;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 93
    :cond_2
    instance-of v3, p1, Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    .line 95
    .local v0, "other":Lcom/google/gdata/data/appsforyourdomain/migration/Label;
    iget-object v3, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 96
    iget-object v3, v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

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
    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "labelName"

    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "label"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 128
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 135
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;-><init>(Lcom/google/gdata/data/appsforyourdomain/migration/Label;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 83
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method
