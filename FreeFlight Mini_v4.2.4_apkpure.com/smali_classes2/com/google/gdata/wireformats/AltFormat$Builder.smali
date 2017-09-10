.class public Lcom/google/gdata/wireformats/AltFormat$Builder;
.super Ljava/lang/Object;
.source "AltFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/AltFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private acceptableTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;"
        }
    .end annotation
.end field

.field private base:Lcom/google/gdata/wireformats/AltFormat;

.field private contentType:Lcom/google/gdata/util/ContentType;

.field private final extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<",
            "Lcom/google/gdata/wireformats/AltFormat;",
            ">;"
        }
    .end annotation
.end field

.field private isSelectableByType:Z

.field private name:Ljava/lang/String;

.field private wireFormat:Lcom/google/gdata/wireformats/WireFormat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/AltFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/AltFormat$1;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/gdata/wireformats/AltFormat$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/wireformats/AltFormat;)V
    .locals 2
    .param p1, "prototype"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;

    .line 317
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1100(Lcom/google/gdata/wireformats/AltFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->name:Ljava/lang/String;

    .line 318
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1200(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/WireFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    .line 319
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1300(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/util/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->contentType:Lcom/google/gdata/util/ContentType;

    .line 320
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1400(Lcom/google/gdata/wireformats/AltFormat;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    .line 321
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1500(Lcom/google/gdata/wireformats/AltFormat;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 322
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1600(Lcom/google/gdata/wireformats/AltFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->isSelectableByType:Z

    .line 323
    invoke-static {p1}, Lcom/google/gdata/wireformats/AltFormat;->access$1700(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->base:Lcom/google/gdata/wireformats/AltFormat;

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/AltFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/AltFormat;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/AltFormat$1;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;-><init>(Lcom/google/gdata/wireformats/AltFormat;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->check()Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/AltFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->base:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/gdata/wireformats/AltFormat$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/wireformats/WireFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/gdata/util/ContentType;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->contentType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/gdata/wireformats/AltFormat$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/gdata/wireformats/AltFormat$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->isSelectableByType:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/gdata/wireformats/AltFormat$Builder;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/gdata/wireformats/AltFormat$Builder;Ljava/lang/Iterable;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltFormat$Builder;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableTypes(Ljava/lang/Iterable;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private check()Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Name must be set"

    invoke-static {v0, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->contentType:Lcom/google/gdata/util/ContentType;

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "contentType must be set"

    invoke-static {v1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 463
    return-object p0

    :cond_0
    move v0, v2

    .line 461
    goto :goto_0

    :cond_1
    move v1, v2

    .line 462
    goto :goto_1
.end method

.method private setAcceptableTypes(Ljava/lang/Iterable;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/util/ContentType;",
            ">;)",
            "Lcom/google/gdata/wireformats/AltFormat$Builder;"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "types":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/gdata/util/ContentType;>;"
    if-nez p1, :cond_0

    .line 411
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    .line 415
    :goto_0
    return-object p0

    .line 413
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public varargs addAllowedInputFormats([Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 5
    .param p1, "formats"    # [Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 444
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/gdata/wireformats/AltFormat;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 445
    .local v1, "format":Lcom/google/gdata/wireformats/AltFormat;
    iget-object v4, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->extraInputFormats:Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "format":Lcom/google/gdata/wireformats/AltFormat;
    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/gdata/wireformats/AltFormat;
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->check()Lcom/google/gdata/wireformats/AltFormat$Builder;

    .line 457
    new-instance v0, Lcom/google/gdata/wireformats/AltFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/wireformats/AltFormat;-><init>(Lcom/google/gdata/wireformats/AltFormat$Builder;Lcom/google/gdata/wireformats/AltFormat$1;)V

    return-object v0
.end method

.method public setAcceptableTextTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gdata/util/ContentType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableTypes([Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setAcceptableTypes([Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 1
    .param p1, "types"    # [Lcom/google/gdata/util/ContentType;

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    .line 401
    :goto_0
    return-object p0

    .line 399
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->acceptableTypes:Ljava/util/Set;

    goto :goto_0
.end method

.method public setAcceptableXmlTypes()Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/util/ContentType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_XML:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/gdata/wireformats/AltFormat$Builder;->setAcceptableTypes([Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBaseFormat(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 0
    .param p1, "base"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->base:Lcom/google/gdata/wireformats/AltFormat;

    .line 371
    return-object p0
.end method

.method public setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 0
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->contentType:Lcom/google/gdata/util/ContentType;

    .line 351
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->name:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public setSelectableByType(Z)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 0
    .param p1, "isSelectableByType"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->isSelectableByType:Z

    .line 360
    return-object p0
.end method

.method public setWireFormat(Lcom/google/gdata/wireformats/WireFormat;)Lcom/google/gdata/wireformats/AltFormat$Builder;
    .locals 0
    .param p1, "wireFormat"    # Lcom/google/gdata/wireformats/WireFormat;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltFormat$Builder;->wireFormat:Lcom/google/gdata/wireformats/WireFormat;

    .line 341
    return-object p0
.end method
