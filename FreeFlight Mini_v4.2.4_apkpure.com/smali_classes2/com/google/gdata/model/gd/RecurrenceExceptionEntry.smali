.class public Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
.super Lcom/google/gdata/model/atom/Entry;
.source "RecurrenceExceptionEntry.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 76
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/atom/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;",
            ">;",
            "Lcom/google/gdata/model/atom/Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Entry;)V
    .locals 1
    .param p1, "sourceEntry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 85
    sget-object v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 86
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 47
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Entry;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 55
    sget-object v1, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 58
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 59
    sget-object v1, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 60
    sget-object v1, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 61
    sget-object v1, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 62
    sget-object v1, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 63
    sget-object v1, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 65
    sget-object v1, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 67
    sget-object v1, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public addWhen(Lcom/google/gdata/model/gd/When;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "when"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 277
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 278
    return-object p0
.end method

.method public addWhere(Lcom/google/gdata/model/gd/Where;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/model/gd/Where;

    .prologue
    .line 322
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 323
    return-object p0
.end method

.method public addWho(Lcom/google/gdata/model/gd/Who;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "who"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 367
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 368
    return-object p0
.end method

.method public clearWhen()V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 296
    return-void
.end method

.method public clearWhere()V
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 341
    return-void
.end method

.method public clearWho()V
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 386
    return-void
.end method

.method public getComments()Lcom/google/gdata/model/gd/Comments;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Comments;

    return-object v0
.end method

.method public getEventStatus()Lcom/google/gdata/model/gd/EventStatus;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/EventStatus;

    return-object v0
.end method

.method public getOriginalEvent()Lcom/google/gdata/model/gd/OriginalEvent;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/OriginalEvent;

    return-object v0
.end method

.method public getTransparency()Lcom/google/gdata/model/gd/Transparency;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Transparency;

    return-object v0
.end method

.method public getVisibility()Lcom/google/gdata/model/gd/Visibility;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Visibility;

    return-object v0
.end method

.method public getWhen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/When;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhere()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Where;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWho()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Who;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasEventStatus()Z
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasOriginalEvent()Z
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasTransparency()Z
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasVisibility()Z
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasWhen()Z
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/google/gdata/model/gd/Where;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasWho()Z
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;->lock()Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/google/gdata/model/atom/Entry;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;

    return-object v0
.end method

.method public removeWhen(Lcom/google/gdata/model/gd/When;)Z
    .locals 1
    .param p1, "when"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeWhere(Lcom/google/gdata/model/gd/Where;)Z
    .locals 1
    .param p1, "where"    # Lcom/google/gdata/model/gd/Where;

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeWho(Lcom/google/gdata/model/gd/Who;)Z
    .locals 1
    .param p1, "who"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 378
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public setComments(Lcom/google/gdata/model/gd/Comments;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "comments"    # Lcom/google/gdata/model/gd/Comments;

    .prologue
    .line 132
    sget-object v0, Lcom/google/gdata/model/gd/Comments;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 133
    return-object p0
.end method

.method public setEventStatus(Lcom/google/gdata/model/gd/EventStatus;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "eventStatus"    # Lcom/google/gdata/model/gd/EventStatus;

    .prologue
    .line 161
    sget-object v0, Lcom/google/gdata/model/gd/EventStatus;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 162
    return-object p0
.end method

.method public setOriginalEvent(Lcom/google/gdata/model/gd/OriginalEvent;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "originalEvent"    # Lcom/google/gdata/model/gd/OriginalEvent;

    .prologue
    .line 191
    sget-object v0, Lcom/google/gdata/model/gd/OriginalEvent;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 192
    return-object p0
.end method

.method public setTransparency(Lcom/google/gdata/model/gd/Transparency;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "transparency"    # Lcom/google/gdata/model/gd/Transparency;

    .prologue
    .line 220
    sget-object v0, Lcom/google/gdata/model/gd/Transparency;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 221
    return-object p0
.end method

.method public setVisibility(Lcom/google/gdata/model/gd/Visibility;)Lcom/google/gdata/model/gd/RecurrenceExceptionEntry;
    .locals 1
    .param p1, "visibility"    # Lcom/google/gdata/model/gd/Visibility;

    .prologue
    .line 249
    sget-object v0, Lcom/google/gdata/model/gd/Visibility;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 250
    return-object p0
.end method
