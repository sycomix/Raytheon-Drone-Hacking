.class final Lcom/crittercism/internal/be$2;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/ax;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/crittercism/internal/be$2;->a:Lcom/crittercism/internal/ax;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/crittercism/internal/be$2;->a:Lcom/crittercism/internal/ax;

    .line 2046
    iget-object v0, v0, Lcom/crittercism/internal/ax;->l:Lcom/crittercism/internal/bq;

    .line 402
    invoke-virtual {v0}, Lcom/crittercism/internal/bq;->a()V

    .line 403
    return-void
.end method
