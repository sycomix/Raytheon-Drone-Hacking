.class public final Lcom/crittercism/internal/bx$a;
.super Lcom/crittercism/internal/ch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/crittercism/internal/ch;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcom/crittercism/internal/bo;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/crittercism/internal/bx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/crittercism/internal/bx;-><init>(Ljava/io/File;B)V

    return-object v0
.end method
