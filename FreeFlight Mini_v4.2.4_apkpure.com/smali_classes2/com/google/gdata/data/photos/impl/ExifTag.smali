.class public Lcom/google/gdata/data/photos/impl/ExifTag;
.super Lcom/google/gdata/data/ValueConstruct;
.source "ExifTag.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/ExifTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v0, Lcom/google/gdata/data/photos/Namespaces;->EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/google/gdata/data/photos/impl/ExifTag;->name:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/ExifTag;->setRequired(Z)V

    .line 49
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 64
    .local v0, "extDesc":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 65
    const-class v1, Lcom/google/gdata/data/photos/impl/ExifTag;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 66
    sget-object v1, Lcom/google/gdata/data/photos/Namespaces;->EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 67
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/photos/impl/ExifTag;->name:Ljava/lang/String;

    return-object v0
.end method
