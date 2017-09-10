.class abstract Lcom/google/gdata/model/MetadataCreatorImpl;
.super Ljava/lang/Object;
.source "MetadataCreatorImpl.java"

# interfaces
.implements Lcom/google/gdata/model/MetadataCreator;


# instance fields
.field private isMoved:Z

.field private name:Lcom/google/gdata/model/QName;

.field private path:Lcom/google/gdata/model/Path;

.field final registry:Lcom/google/gdata/model/MetadataRegistry;

.field private required:Ljava/lang/Boolean;

.field private source:Lcom/google/gdata/model/TransformKey;

.field final transformKey:Lcom/google/gdata/model/TransformKey;

.field private virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

.field private visible:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V
    .locals 0
    .param p1, "root"    # Lcom/google/gdata/model/MetadataRegistry;
    .param p2, "transformKey"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    .line 52
    iput-object p2, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    .line 53
    return-void
.end method


# virtual methods
.method getName()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->name:Lcom/google/gdata/model/QName;

    return-object v0
.end method

.method public getPath()Lcom/google/gdata/model/Path;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->path:Lcom/google/gdata/model/Path;

    return-object v0
.end method

.method getRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    return-object v0
.end method

.method getSource()Lcom/google/gdata/model/TransformKey;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->source:Lcom/google/gdata/model/TransformKey;

    return-object v0
.end method

.method getTransformKey()Lcom/google/gdata/model/TransformKey;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    return-object v0
.end method

.method getVirtualValue()Lcom/google/gdata/model/Metadata$VirtualValue;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    return-object v0
.end method

.method getVisible()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->visible:Ljava/lang/Boolean;

    return-object v0
.end method

.method isMoved()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->isMoved:Z

    return v0
.end method

.method merge(Lcom/google/gdata/model/MetadataCreatorImpl;)V
    .locals 1
    .param p1, "other"    # Lcom/google/gdata/model/MetadataCreatorImpl;

    .prologue
    .line 59
    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->name:Lcom/google/gdata/model/QName;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->name:Lcom/google/gdata/model/QName;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->name:Lcom/google/gdata/model/QName;

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    .line 66
    :cond_1
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->visible:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->visible:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->visible:Ljava/lang/Boolean;

    .line 69
    :cond_2
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 72
    :cond_3
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->source:Lcom/google/gdata/model/TransformKey;

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->source:Lcom/google/gdata/model/TransformKey;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->source:Lcom/google/gdata/model/TransformKey;

    .line 75
    :cond_4
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->path:Lcom/google/gdata/model/Path;

    if-eqz v0, :cond_5

    .line 76
    iget-object v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->path:Lcom/google/gdata/model/Path;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->path:Lcom/google/gdata/model/Path;

    .line 78
    :cond_5
    iget-boolean v0, p1, Lcom/google/gdata/model/MetadataCreatorImpl;->isMoved:Z

    if-eqz v0, :cond_6

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->isMoved:Z

    .line 81
    :cond_6
    return-void
.end method

.method moved()Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 151
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->isMoved:Z

    .line 152
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 153
    monitor-exit v1

    .line 154
    return-object p0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 2
    .param p1, "name"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->name:Lcom/google/gdata/model/QName;

    .line 89
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 90
    monitor-exit v1

    .line 91
    return-object p0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 2
    .param p1, "required"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 101
    monitor-exit v1

    .line 102
    return-object p0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V
    .locals 2
    .param p1, "path"    # Lcom/google/gdata/model/Path;
    .param p2, "key"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 132
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->path:Lcom/google/gdata/model/Path;

    .line 133
    iput-object p2, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->source:Lcom/google/gdata/model/TransformKey;

    .line 134
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 138
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->required:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 2
    .param p1, "virtualValue"    # Lcom/google/gdata/model/Metadata$VirtualValue;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 121
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 122
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 123
    monitor-exit v1

    .line 124
    return-object p0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->visible:Ljava/lang/Boolean;

    .line 111
    iget-object v0, p0, Lcom/google/gdata/model/MetadataCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 112
    monitor-exit v1

    .line 113
    return-object p0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
