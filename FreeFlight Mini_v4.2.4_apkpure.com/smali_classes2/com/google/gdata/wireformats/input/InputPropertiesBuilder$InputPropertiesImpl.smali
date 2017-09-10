.class Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;
.super Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;
.source "InputPropertiesBuilder.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputPropertiesImpl"
.end annotation


# instance fields
.field private final expectType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/StreamPropertiesBuilder;)V

    .line 87
    invoke-static {p1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->access$100(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;->expectType:Ljava/lang/Class;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;)V

    return-void
.end method


# virtual methods
.method public getRootType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder$InputPropertiesImpl;->expectType:Ljava/lang/Class;

    return-object v0
.end method
