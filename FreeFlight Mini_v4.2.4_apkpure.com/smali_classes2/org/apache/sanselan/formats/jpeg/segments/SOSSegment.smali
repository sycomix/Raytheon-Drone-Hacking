.class public Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;
.super Lorg/apache/sanselan/formats/jpeg/segments/Segment;
.source "SOSSegment.java"


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 10
    .param p1, "marker"    # I
    .param p2, "marker_length"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;-><init>(II)V

    .line 39
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "SOSSegment marker_length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    :cond_0
    const-string v7, "SOS"

    invoke-static {v7, p2}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 44
    const-string v7, "number_of_components_in_scan"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v3

    .line 46
    .local v3, "number_of_components_in_scan":I
    const-string v7, "number_of_components_in_scan"

    invoke-static {v7, v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 49
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 51
    const-string v7, "scan_component_selector"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v4

    .line 53
    .local v4, "scan_component_selector":I
    const-string v7, "scan_component_selector"

    invoke-static {v7, v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 55
    const-string v7, "ac_dc_entrooy_coding_table_selector"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    .line 58
    .local v0, "ac_dc_entrooy_coding_table_selector":I
    const-string v7, "ac_dc_entrooy_coding_table_selector"

    invoke-static {v7, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "ac_dc_entrooy_coding_table_selector":I
    .end local v4    # "scan_component_selector":I
    :cond_1
    const-string v7, "start_of_spectral_selection"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v5

    .line 64
    .local v5, "start_of_spectral_selection":I
    const-string v7, "start_of_spectral_selection"

    invoke-static {v7, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 65
    const-string v7, "end_of_spectral_selection"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 67
    .local v1, "end_of_spectral_selection":I
    const-string v7, "end_of_spectral_selection"

    invoke-static {v7, v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 68
    const-string v7, "successive_approximation_bit_position"

    const-string v8, "Not a Valid JPEG File"

    invoke-virtual {p0, v7, p3, v8}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v6

    .line 71
    .local v6, "successive_approximation_bit_position":I
    const-string v7, "successive_approximation_bit_position"

    invoke-static {v7, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->getDebug()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :cond_2
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SOS ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOSSegment;->getSegmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
