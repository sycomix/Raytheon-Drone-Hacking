.class public Lcom/google/gdata/data/spreadsheet/Cell;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/spreadsheet/Cell$Handler;
    }
.end annotation


# instance fields
.field private col:I

.field private inputValue:Ljava/lang/String;

.field private numericValue:Ljava/lang/Number;

.field private row:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    .line 44
    iput v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 6
    .param p1, "inRow"    # I
    .param p2, "inCol"    # I
    .param p3, "inInputValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 90
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/spreadsheet/Cell;-><init>(IILjava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 2
    .param p1, "inRow"    # I
    .param p2, "inCol"    # I
    .param p3, "inInputValue"    # Ljava/lang/String;
    .param p4, "inNumericValue"    # Ljava/lang/Number;
    .param p5, "inValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    .line 44
    iput v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    .line 76
    iput p2, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    .line 77
    iput-object p3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/spreadsheet/Cell;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/gdata/data/spreadsheet/Cell;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;
    .param p1, "x1"    # Ljava/lang/Number;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/gdata/data/spreadsheet/Cell;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/gdata/data/spreadsheet/Cell;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/spreadsheet/Cell;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    return-object p1
.end method

.method public static createFullCell(IILjava/lang/String;Ljava/lang/Number;Ljava/lang/String;)Lcom/google/gdata/data/spreadsheet/Cell;
    .locals 6
    .param p0, "inRow"    # I
    .param p1, "inCol"    # I
    .param p2, "inInputValue"    # Ljava/lang/String;
    .param p3, "inCalculatedValue"    # Ljava/lang/Number;
    .param p4, "inValue"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Cell;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/spreadsheet/Cell;-><init>(IILjava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeats"    # Z

    .prologue
    .line 184
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 185
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 186
    sget-object v1, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 187
    const-string v1, "cell"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 189
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
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    if-lez v1, :cond_0

    .line 201
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "row"

    iget v3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    iget v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    if-lez v1, :cond_1

    .line 205
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "col"

    iget v3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "inputValue"

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 213
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "numericValue"

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_3
    sget-object v1, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "cell"

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public getCol()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    return v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 149
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 151
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0
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
    .line 228
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Cell$Handler;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/spreadsheet/Cell$Handler;-><init>(Lcom/google/gdata/data/spreadsheet/Cell;)V

    return-object v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->inputValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNumericValue()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->numericValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Cell;->value:Ljava/lang/String;

    return-object v0
.end method

.method public withNewInputValue(Ljava/lang/String;)Lcom/google/gdata/data/spreadsheet/Cell;
    .locals 6
    .param p1, "newInputValue"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Cell;

    iget v1, p0, Lcom/google/gdata/data/spreadsheet/Cell;->row:I

    iget v2, p0, Lcom/google/gdata/data/spreadsheet/Cell;->col:I

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/spreadsheet/Cell;-><init>(IILjava/lang/String;Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0
.end method
