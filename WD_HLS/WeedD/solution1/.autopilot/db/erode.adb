<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>erode</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>p_src_data_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_src.data.V</originalName>
              <rtlName/>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>1</if_type>
          <array_size>57600</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>p_dst_data_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_dst.data.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_3">
          <Value>
            <Obj>
              <type>0</type>
              <id>4</id>
              <name>_ln364</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_erosion.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>364</lineNumber>
              <contextFuncName>erode&amp;lt;0, 0, 180, 320, 2, 3, 3, 1, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_erosion.hpp</first>
                        <second>erode&amp;lt;0, 0, 180, 320, 2, 3, 3, 1, 1&amp;gt;</second>
                      </first>
                      <second>364</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>grp_xferode793_fu_18</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>3</count>
            <item_version>0</item_version>
            <item>8</item>
            <item>9</item>
            <item>10</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>5</id>
              <name>_ln367</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_erosion.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>367</lineNumber>
              <contextFuncName>erode&amp;lt;0, 0, 180, 320, 2, 3, 3, 1, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_erosion.hpp</first>
                        <second>erode&amp;lt;0, 0, 180, 320, 2, 3, 3, 1, 1&amp;gt;</second>
                      </first>
                      <second>367</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>2</type>
              <id>7</id>
              <name>xferode793</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:xferode793&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_6">
          <Obj>
            <type>3</type>
            <id>6</id>
            <name>erode</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>2</count>
            <item_version>0</item_version>
            <item>4</item>
            <item>5</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_7">
          <id>8</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_8">
          <id>9</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_9">
          <id>10</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>4</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_10">
        <mId>1</mId>
        <mTag>erode</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>59329</mMinLatency>
        <mMaxLatency>59329</mMaxLatency>
        <mIsDfPipe>0</mIsDfPipe>
        <mDfPipe class_id="-1"/>
      </item>
    </cdfg_regions>
    <fsm class_id="24" tracking_level="1" version="0" object_id="_11">
      <states class_id="25" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="26" tracking_level="1" version="0" object_id="_12">
          <id>1</id>
          <operations class_id="27" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="28" tracking_level="1" version="0" object_id="_13">
              <id>4</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="26" object_id="_14">
          <id>2</id>
          <operations>
            <count>3</count>
            <item_version>0</item_version>
            <item class_id_reference="28" object_id="_15">
              <id>3</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="28" object_id="_16">
              <id>4</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="28" object_id="_17">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="29" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="30" tracking_level="1" version="0" object_id="_18">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="31" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="32" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="33" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="34" tracking_level="1" version="0" object_id="_19">
      <dp_component_resource class_id="35" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="0" version="0">
          <first>grp_xferode793_fu_18 (xferode793)</first>
          <second class_id="37" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>3</second>
            </item>
            <item>
              <first>FF</first>
              <second>324</second>
            </item>
            <item>
              <first>LUT</first>
              <second>736</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>ap_NS_fsm</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>3</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>3</second>
            </item>
            <item>
              <first>LUT</first>
              <second>15</second>
            </item>
          </second>
        </item>
        <item>
          <first>p_dst_data_V_write</first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0Size)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(2Count)</first>
              <second>2</second>
            </item>
            <item>
              <first>LUT</first>
              <second>9</second>
            </item>
          </second>
        </item>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>2</count>
        <item_version>0</item_version>
        <item>
          <first>ap_CS_fsm</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>2</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>2</second>
            </item>
          </second>
        </item>
        <item>
          <first>grp_xferode793_fu_18_ap_start_reg</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>(Bits)</first>
              <second>1</second>
            </item>
            <item>
              <first>(Consts)</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>1</second>
            </item>
          </second>
        </item>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>grp_xferode793_fu_18</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="39" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="0" version="0">
          <first>grp_xferode793_fu_18 (xferode793)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>4</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="41" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="42" tracking_level="0" version="0">
        <first>4</first>
        <second class_id="43" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>5</first>
        <second>
          <first>1</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="44" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="45" tracking_level="0" version="0">
        <first>6</first>
        <second class_id="46" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="47" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </regions>
    <dp_fu_nodes class_id="48" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="49" tracking_level="0" version="0">
        <first>18</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>4</item>
          <item>4</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="51" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>grp_xferode793_fu_18</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>4</item>
          <item>4</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="53" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>p_dst_data_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>4</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="56" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="57" tracking_level="0" version="0">
        <first>1</first>
        <second>RAM</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>