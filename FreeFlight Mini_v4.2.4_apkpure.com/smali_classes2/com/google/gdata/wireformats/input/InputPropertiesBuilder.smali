.class public Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;
.super Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
.source "InputPropertiesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$1;,
        Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/StreamPropertiesBuilder",
        "<",
        "Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private expectType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/input/InputProperties;)V
    .locals 1
    .param p1, "source"    # Lcom/google/gdata/wireformats/input/InputProperties;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;-><init>(Lcom/google/gdata/wireformats/StreamProperties;)V

    .line 48
    invoke-interface {p1}, Lcom/google/gdata/wireformats/input/InputProperties;->getRootType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->expectType:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->expectType:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/gdata/wireformats/input/InputProperties;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$1;)V

    return-object v0
.end method

.method public setExpectType(Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "expectType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->expectType:Ljava/lang/Class;

    .line 60
    return-object p0
.end method
