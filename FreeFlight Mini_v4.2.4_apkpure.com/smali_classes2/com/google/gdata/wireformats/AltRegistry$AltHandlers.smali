.class Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;
.super Ljava/lang/Object;
.source "AltRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/AltRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AltHandlers"
.end annotation


# instance fields
.field private final generator:Lcom/google/gdata/wireformats/output/OutputGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/output/OutputGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field private final parser:Lcom/google/gdata/wireformats/input/InputParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/wireformats/input/InputParser;Lcom/google/gdata/wireformats/output/OutputGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<*>;",
            "Lcom/google/gdata/wireformats/output/OutputGenerator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "parser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<*>;"
    .local p2, "generator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->parser:Lcom/google/gdata/wireformats/input/InputParser;

    .line 60
    iput-object p2, p0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->generator:Lcom/google/gdata/wireformats/output/OutputGenerator;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/input/InputParser;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->parser:Lcom/google/gdata/wireformats/input/InputParser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;)Lcom/google/gdata/wireformats/output/OutputGenerator;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/wireformats/AltRegistry$AltHandlers;->generator:Lcom/google/gdata/wireformats/output/OutputGenerator;

    return-object v0
.end method
