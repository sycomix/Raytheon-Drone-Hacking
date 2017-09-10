.class final Lcom/crittercism/internal/ax$11;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/cg;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/cg;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/crittercism/internal/ax$11;->b:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$11;->a:Lcom/crittercism/internal/cg;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/crittercism/internal/ax$11;->b:Lcom/crittercism/internal/ax;

    .line 1091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->k:Lcom/crittercism/internal/bq;

    .line 902
    iget-object v1, p0, Lcom/crittercism/internal/ax$11;->a:Lcom/crittercism/internal/cg;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 903
    return-void
.end method
