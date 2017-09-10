.class public abstract Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;
.super Lcom/google/gdata/data/AbstractExtension;
.source "AbstractFreeTextExtension.java"


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;->content:Ljava/lang/String;

    .line 53
    return-void
.end method
