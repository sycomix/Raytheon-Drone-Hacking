.class abstract Lcom/google/gdata/model/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# instance fields
.field private final isMoved:Z

.field private final name:Lcom/google/gdata/model/QName;

.field private final path:Lcom/google/gdata/model/Path;

.field private final required:Ljava/lang/Boolean;

.field private final source:Lcom/google/gdata/model/TransformKey;

.field private final virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

.field private final visible:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    .line 45
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    .line 47
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 48
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/MetadataCreatorImpl;)V
    .locals 1
    .param p1, "creator"    # Lcom/google/gdata/model/MetadataCreatorImpl;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    .line 62
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getRequired()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getVisible()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    .line 64
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getVirtualValue()Lcom/google/gdata/model/Metadata$VirtualValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 65
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getSource()Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    .line 66
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->getPath()Lcom/google/gdata/model/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    .line 67
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->isMoved()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V
    .locals 5
    .param p1, "transform"    # Lcom/google/gdata/model/Transform;
    .param p2, "source"    # Lcom/google/gdata/model/Transform;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-array v0, v4, [Lcom/google/gdata/model/QName;

    iget-object v1, p1, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    aput-object v1, v0, v2

    iget-object v1, p2, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/gdata/model/Transform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/QName;

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    .line 132
    iget-object v0, p1, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    .line 133
    new-array v0, v4, [Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    iget-object v1, p2, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/gdata/model/Transform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    .line 134
    new-array v0, v4, [Lcom/google/gdata/model/Metadata$VirtualValue;

    iget-object v1, p1, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    aput-object v1, v0, v2

    iget-object v1, p2, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/gdata/model/Transform;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Metadata$VirtualValue;

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 135
    iget-object v0, p1, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    .line 136
    iget-boolean v0, p1, Lcom/google/gdata/model/Transform;->isMoved:Z

    iput-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    .line 141
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/gdata/model/Transform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/gdata/model/Transform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "compositeName":Lcom/google/gdata/model/QName;
    const/4 v3, 0x0

    .line 78
    .local v3, "compositeRequired":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 79
    .local v6, "compositeVisible":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 80
    .local v5, "compositeVirtualValue":Lcom/google/gdata/model/Metadata$VirtualValue;
    const/4 v4, 0x0

    .line 81
    .local v4, "compositeSource":Lcom/google/gdata/model/TransformKey;
    const/4 v2, 0x0

    .line 82
    .local v2, "compositePath":Lcom/google/gdata/model/Path;
    const/4 v0, 0x0

    .line 84
    .local v0, "compositeMoved":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/model/Transform;

    .line 85
    .local v8, "part":Lcom/google/gdata/model/Transform;
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    if-eqz v9, :cond_1

    .line 86
    iget-object v1, v8, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    .line 88
    :cond_1
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    .line 89
    iget-object v3, v8, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    .line 91
    :cond_2
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    if-eqz v9, :cond_3

    .line 92
    iget-object v6, v8, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    .line 94
    :cond_3
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    if-eqz v9, :cond_4

    .line 95
    iget-object v5, v8, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 97
    :cond_4
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    if-eqz v9, :cond_5

    .line 98
    iget-object v4, v8, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    .line 100
    :cond_5
    iget-object v9, v8, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    if-eqz v9, :cond_6

    .line 101
    iget-object v2, v8, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    .line 103
    :cond_6
    iget-boolean v9, v8, Lcom/google/gdata/model/Transform;->isMoved:Z

    if-eqz v9, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    .end local v8    # "part":Lcom/google/gdata/model/Transform;
    :cond_7
    iput-object v1, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    .line 109
    iput-object v3, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    .line 110
    iput-object v6, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    .line 111
    iput-object v5, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 112
    iput-object v4, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    .line 113
    iput-object v2, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    .line 114
    iput-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    .line 115
    return-void
.end method

.method static varargs first([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "ts":[Ljava/lang/Object;, "[TT;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 148
    .local v3, "t":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 152
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v3

    .line 147
    .restart local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method getName()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    return-object v0
.end method

.method getPath()Lcom/google/gdata/model/Path;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    return-object v0
.end method

.method getRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method getSource()Lcom/google/gdata/model/TransformKey;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    return-object v0
.end method

.method getVirtualValue()Lcom/google/gdata/model/Metadata$VirtualValue;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    return-object v0
.end method

.method getVisible()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/gdata/model/Transform;->name:Lcom/google/gdata/model/QName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Transform;->required:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Transform;->visible:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Transform;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Transform;->source:Lcom/google/gdata/model/TransformKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Transform;->path:Lcom/google/gdata/model/Path;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMoved()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/gdata/model/Transform;->isMoved:Z

    return v0
.end method
