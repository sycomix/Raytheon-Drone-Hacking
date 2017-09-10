.class Lcom/google/gdata/model/VirtualElementHolder;
.super Ljava/lang/Object;
.source "VirtualElementHolder.java"


# instance fields
.field private final multiple:Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

.field private final single:Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)V
    .locals 0
    .param p1, "single"    # Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    .param p2, "multiple"    # Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/gdata/model/VirtualElementHolder;->single:Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    .line 80
    iput-object p2, p0, Lcom/google/gdata/model/VirtualElementHolder;->multiple:Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    .line 81
    return-void
.end method

.method static of(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/VirtualElementHolder;
    .locals 2
    .param p0, "multiple"    # Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/gdata/model/VirtualElementHolder;

    invoke-direct {v1, v0, p0}, Lcom/google/gdata/model/VirtualElementHolder;-><init>(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static of(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/VirtualElementHolder;
    .locals 2
    .param p0, "single"    # Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/gdata/model/VirtualElementHolder;

    invoke-direct {v1, p0, v0}, Lcom/google/gdata/model/VirtualElementHolder;-><init>(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static of(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/VirtualElementHolder;
    .locals 2
    .param p0, "path"    # Lcom/google/gdata/model/Path;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 74
    :goto_0
    return-object v1

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/PathAdapter;->elementAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ElementAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Lcom/google/gdata/model/PathAdapter$ElementAdapter;
    new-instance v1, Lcom/google/gdata/model/VirtualElementHolder;

    invoke-direct {v1, v0, v0}, Lcom/google/gdata/model/VirtualElementHolder;-><init>(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)V

    goto :goto_0
.end method


# virtual methods
.method getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/model/VirtualElementHolder;->multiple:Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    return-object v0
.end method

.method getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/model/VirtualElementHolder;->single:Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    return-object v0
.end method
