.class public Lcom/google/gdata/data/spreadsheet/RowCount;
.super Ljava/lang/Object;
.source "RowCount.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "rowCount"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    .line 54
    iput p1, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/spreadsheet/RowCount;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/RowCount;

    .prologue
    .line 36
    iget v0, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/gdata/data/spreadsheet/RowCount;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/RowCount;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    return p1
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 69
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 70
    sget-object v1, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 71
    const-string v1, "rowCount"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "rowCount"

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/gdata/data/spreadsheet/RowCount;->count:I

    return v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RowCount$1;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/spreadsheet/RowCount$1;-><init>(Lcom/google/gdata/data/spreadsheet/RowCount;)V

    return-object v0
.end method
