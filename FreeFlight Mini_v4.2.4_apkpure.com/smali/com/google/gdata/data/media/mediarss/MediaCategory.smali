.class public Lcom/google/gdata/data/media/mediarss/MediaCategory;
.super Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;
.source "MediaCategory.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "category"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# static fields
.field public static final DEFAULT_SCHEME:Ljava/lang/String; = "http://search.yahoo.com/mrss/category_schema"


# instance fields
.field private label:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->scheme:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/media/mediarss/MediaCategory;->setContent(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 87
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->label:Ljava/lang/String;

    .line 88
    const-string v0, "scheme"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->scheme:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public bridge synthetic getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 79
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "scheme"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->label:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaCategory;->scheme:Ljava/lang/String;

    .line 74
    return-void
.end method
