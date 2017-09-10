.class Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$OutputPropertiesImpl;
.super Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;
.source "OutputPropertiesBuilder.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputPropertiesImpl"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/StreamPropertiesBuilder$StreamPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/StreamPropertiesBuilder;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder$OutputPropertiesImpl;-><init>(Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;)V

    return-void
.end method
