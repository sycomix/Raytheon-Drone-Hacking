.class public Lcom/google/gdata/data/threading/InReplyTo;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "InReplyTo.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "in-reply-to"
    nsAlias = "thr"
    nsUri = "http://purl.org/syndication/thread/1.0"
.end annotation


# static fields
.field private static final HREF:Ljava/lang/String; = "href"

.field private static final REF:Ljava/lang/String; = "ref"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final TYPE:Ljava/lang/String; = "type"

.field static final XML_NAME:Ljava/lang/String; = "in-reply-to"


# instance fields
.field private href:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/threading/InReplyTo;->setHref(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/threading/InReplyTo;->setRef(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/threading/InReplyTo;->setSource(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/threading/InReplyTo;->setType(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/threading/InReplyTo;->setImmutable(Z)V

    .line 94
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 252
    const-class v1, Lcom/google/gdata/data/threading/InReplyTo;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 254
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 255
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 256
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 270
    const-string v0, "href"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    .line 271
    const-string v0, "ref"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    .line 272
    const-string v0, "source"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    .line 273
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    if-ne p0, p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 281
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/threading/InReplyTo;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 282
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 284
    check-cast v0, Lcom/google/gdata/data/threading/InReplyTo;

    .line 285
    .local v0, "other":Lcom/google/gdata/data/threading/InReplyTo;
    iget-object v3, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/threading/InReplyTo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/threading/InReplyTo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/threading/InReplyTo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/threading/InReplyTo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRef()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 294
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 295
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 298
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 301
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 304
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 306
    :cond_3
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 261
    const-string v0, "href"

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "ref"

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "source"

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->throwExceptionIfImmutable()V

    .line 116
    iput-object p1, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->throwExceptionIfImmutable()V

    .line 150
    iput-object p1, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->throwExceptionIfImmutable()V

    .line 185
    iput-object p1, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/gdata/data/threading/InReplyTo;->throwExceptionIfImmutable()V

    .line 221
    iput-object p1, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{InReplyTo href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/threading/InReplyTo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/gdata/data/threading/InReplyTo;->ref:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "ref"

    invoke-static {v0}, Lcom/google/gdata/data/threading/InReplyTo;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method
