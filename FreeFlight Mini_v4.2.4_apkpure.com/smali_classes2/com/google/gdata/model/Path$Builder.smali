.class public Lcom/google/gdata/model/Path$Builder;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private root:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;"
        }
    .end annotation
.end field

.field private selectedElement:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private selectsAttribute:Z

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/model/Path$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/model/Path$1;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/model/Path$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->root:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/gdata/model/Path$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/gdata/model/Path$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/gdata/model/Path$Builder;->selectsAttribute:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;

    return-object v0
.end method

.method private addToStepList(Lcom/google/gdata/model/MetadataKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    iget-boolean v0, p0, Lcom/google/gdata/model/Path$Builder;->selectsAttribute:Z

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Lcom/google/gdata/model/PathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add to an attribute path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/model/PathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    instance-of v0, p1, Lcom/google/gdata/model/AttributeKey;

    if-eqz v0, :cond_1

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/Path$Builder;->selectsAttribute:Z

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method


# virtual methods
.method public addIfAttribute(Lcom/google/gdata/model/QName;)Z
    .locals 2
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v1, p1}, Lcom/google/gdata/model/ElementMetadata;->findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    .line 170
    .local v0, "attrKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;

    .line 177
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/gdata/model/Path$Builder;->addToStepList(Lcom/google/gdata/model/MetadataKey;)V

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "attrKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_1
    invoke-static {p1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    .restart local v0    # "attrKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    goto :goto_1
.end method

.method public addIfElement(Lcom/google/gdata/model/QName;)Z
    .locals 2
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v1, p1}, Lcom/google/gdata/model/ElementMetadata;->findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 143
    .local v0, "elemKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v1, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    .line 150
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/gdata/model/Path$Builder;->addToStepList(Lcom/google/gdata/model/MetadataKey;)V

    .line 151
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "elemKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_1
    invoke-static {p1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .restart local v0    # "elemKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    goto :goto_1
.end method

.method public addStep(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)",
            "Lcom/google/gdata/model/Path$Builder;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    iget-object v0, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v0, :cond_1

    .line 111
    instance-of v0, p1, Lcom/google/gdata/model/ElementKey;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Path$Builder;->addIfElement(Lcom/google/gdata/model/QName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Lcom/google/gdata/model/PathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No child element matching key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/model/PathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Path$Builder;->addIfAttribute(Lcom/google/gdata/model/QName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lcom/google/gdata/model/PathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No child attribute matching key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/model/PathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Path$Builder;->addToStepList(Lcom/google/gdata/model/MetadataKey;)V

    .line 124
    :cond_2
    return-object p0
.end method

.method public build()Lcom/google/gdata/model/Path;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/google/gdata/model/Path;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/model/Path;-><init>(Lcom/google/gdata/model/Path$Builder;Lcom/google/gdata/model/Path$1;)V

    return-object v0
.end method

.method fromRoot(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Path$Builder;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "root":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/ElementMetadata;

    iput-object v3, p0, Lcom/google/gdata/model/Path$Builder;->root:Lcom/google/gdata/model/ElementMetadata;

    iput-object v3, p0, Lcom/google/gdata/model/Path$Builder;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    .line 81
    iget-object v3, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, "prevSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/MetadataKey<*>;>;"
    iget-object v3, p0, Lcom/google/gdata/model/Path$Builder;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 85
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/MetadataKey;

    .line 86
    .local v2, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {p0, v2}, Lcom/google/gdata/model/Path$Builder;->addStep(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path$Builder;

    goto :goto_0

    .line 89
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prevSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/MetadataKey<*>;>;"
    .end local v2    # "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    return-object p0
.end method
