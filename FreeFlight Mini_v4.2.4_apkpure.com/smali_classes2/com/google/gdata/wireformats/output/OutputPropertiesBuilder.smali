.class public Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;
.super Lcom/google/gdata/wireformats/StreamPropertiesBuilder;
.source "OutputPropertiesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$1;,
        Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$OutputPropertiesImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/StreamPropertiesBuilder",
        "<",
        "Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/wireformats/output/OutputProperties;)V
    .locals 0
    .param p1, "source"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder;-><init>(Lcom/google/gdata/wireformats/StreamProperties;)V

    .line 44
    return-void
.end method


# virtual methods
.method public build()Lcom/google/gdata/wireformats/output/OutputProperties;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$OutputPropertiesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$OutputPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$1;)V

    return-object v0
.end method
