.class Lcom/google/gdata/model/Element$ElementState;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementState"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locked:Z

.field private value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/model/Element$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/model/Element$1;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/gdata/model/Element$ElementState;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/model/Element$ElementState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/gdata/model/Element$ElementState;->locked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/gdata/model/Element$ElementState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/google/gdata/model/Element$ElementState;->locked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/model/Element$ElementState;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/gdata/model/Element$ElementState;->attributes:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/model/Element$ElementState;->elements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/gdata/model/Element$ElementState;->elements:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/gdata/model/Element$ElementState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/model/Element$ElementState;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/gdata/model/Element$ElementState;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/model/Element$ElementState;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/gdata/model/Element$ElementState;->value:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 145
    .local v0, "helper":Lcom/google/gdata/util/common/base/Objects$ToStringHelper;
    iget-object v1, p0, Lcom/google/gdata/model/Element$ElementState;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "attributes"

    iget-object v2, p0, Lcom/google/gdata/model/Element$ElementState;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/Element$ElementState;->elements:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "elements"

    iget-object v2, p0, Lcom/google/gdata/model/Element$ElementState;->elements:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/Element$ElementState;->value:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "value"

    iget-object v2, p0, Lcom/google/gdata/model/Element$ElementState;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    .line 155
    :cond_2
    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
