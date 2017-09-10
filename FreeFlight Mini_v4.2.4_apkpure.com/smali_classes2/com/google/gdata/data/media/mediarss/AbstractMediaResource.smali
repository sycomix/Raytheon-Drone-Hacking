.class public abstract Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "AbstractMediaResource.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 38
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

    .line 88
    const-string v0, "url"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->url:Ljava/lang/String;

    .line 89
    const-string v0, "height"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->height:I

    .line 90
    const-string v0, "width"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->width:I

    .line 91
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->width:I

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 70
    const-string v0, "url"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->height:I

    if-lez v0, :cond_0

    .line 72
    const-string v0, "height"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->height:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 74
    :cond_0
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->width:I

    if-lez v0, :cond_1

    .line 75
    const-string v0, "width"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->width:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 77
    :cond_1
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->height:I

    .line 62
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->url:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->width:I

    .line 54
    return-void
.end method
