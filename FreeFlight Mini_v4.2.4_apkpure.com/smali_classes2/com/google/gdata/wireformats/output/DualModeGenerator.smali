.class public abstract Lcom/google/gdata/wireformats/output/DualModeGenerator;
.super Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;
.source "DualModeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final oldGen:Lcom/google/gdata/wireformats/output/CharacterGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/wireformats/output/CharacterGenerator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/output/CharacterGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/output/CharacterGenerator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/gdata/wireformats/output/DualModeGenerator;, "Lcom/google/gdata/wireformats/output/DualModeGenerator<TT;>;"
    .local p1, "oldGen":Lcom/google/gdata/wireformats/output/CharacterGenerator;, "Lcom/google/gdata/wireformats/output/CharacterGenerator<TT;>;"
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/gdata/wireformats/output/DualModeGenerator;->oldGen:Lcom/google/gdata/wireformats/output/CharacterGenerator;

    .line 38
    return-void
.end method

.method private isNewModel(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/gdata/wireformats/output/DualModeGenerator;, "Lcom/google/gdata/wireformats/output/DualModeGenerator<TT;>;"
    .local p1, "source":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Lcom/google/gdata/model/Element;

    return v0
.end method


# virtual methods
.method public generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentWriter"    # Ljava/io/Writer;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/gdata/wireformats/output/DualModeGenerator;, "Lcom/google/gdata/wireformats/output/DualModeGenerator<TT;>;"
    .local p3, "source":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p3}, Lcom/google/gdata/wireformats/output/DualModeGenerator;->isNewModel(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/WireFormatOutputGenerator;->generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/wireformats/output/DualModeGenerator;->oldGen:Lcom/google/gdata/wireformats/output/CharacterGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/CharacterGenerator;->generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    goto :goto_0
.end method
